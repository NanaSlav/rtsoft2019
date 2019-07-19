#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>

#include <stdio.h>
#include <iostream>

using namespace cv;
using namespace std;

void help(int code){

	switch (code) {
		case 0:
			cout << "This program detectes people on the camera by the top view."<< endl <<
			" To use it you need to start the program and specify path to video "<< endl << 
			"For Example: ./camera ../camera.avi" << endl;	
			break;
		case -1:
			cout << "Wrong number of arguments" << endl;
		case -2:
			cerr << "Couldn't open video" << endl;
			break;
	}
	

}

int main (int argc, char *argv[]) {

	help(0);
	if(argc != 2) {
		help(-1);
		return -1;
	}
	namedWindow("Camera", WINDOW_AUTOSIZE);
	namedWindow("Mask", WINDOW_AUTOSIZE);

	VideoCapture cap;
	
	cap.open(argv[1]);
	
	if (!cap.isOpened()) {
		help(-2);
		return -1;
	}

	Mat frame;
	Mat mask;
	Mat back;

	Ptr<BackgroundSubtractorMOG2> p;

	p = createBackgroundSubtractorMOG2(500, 20, false); 


	int w = frame.cols;
	int h = frame.rows;

	cout << "Ratio is" << p->getBackgroundRatio() << endl;
	
	p->setBackgroundRatio(1);
	while (true) {
		cap >> frame;
		if (frame.empty()) break;

		p->apply(frame, mask, 0.1);
		int k = 0;
		
		vector< vector <Point> > contours;
                vector<Vec4i> hierarchy;	
		
		findContours(mask, contours, hierarchy, CV_RETR_EXTERNAL,
			CV_CHAIN_APPROX_SIMPLE,Point(0,0));
		vector<vector <Point> > contours_poly(contours.size());
		
		for (int i = 0; i < contours.size(); i++) {
			approxPolyDP(Mat(contours[i]), contours_poly[i],3,true);
		}
		vector<Rect> boundRect(contours_poly.size());
		
		for (int i = 0; i < contours_poly.size(); i++) {
			boundRect[i] = boundingRect(contours_poly[i]);
			int width = boundRect[i].width;
			int height = boundRect[i].height;
			if (width >= 50 and height <= 90 ) {

				rectangle(
					frame,
				 	boundRect[i].tl(), 	
					boundRect[i].br(),
					Scalar(0,0,255),
					2,8,0);
			}
	
		}	
		imshow("Mask", mask);
		imshow("Camera", frame);
	
		if ((char) waitKey(33) >= 0 ) break;

		
	}
	return 0;
}
