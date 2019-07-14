#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>

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

	Ptr<BackgroundSubtractor> p;

	p = createBackgroundSubtractorMOG2(); 
	

	int w = frame.cols;
	int h = frame.rows;
	
	while (true) {
		cap >> frame;
		if (frame.empty()) break;
		imshow("Camera", frame);

		p->apply(frame, mask, 0.1);
		imshow("Mask", mask);

		if ((char) waitKey(33) >= 0 ) break;

		
	}
	return 0;
}
