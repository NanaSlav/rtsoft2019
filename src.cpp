#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>

#include <iostream>

using namespace cv;

int main (int argc, char *argv[]) {
	namedWindow("Camera", WINDOW_AUTOSIZE);
	namedWindow("Mask", WINDOW_AUTOSIZE);

	VideoCapture cap;
	
	cap.open(argv[1]);
	
	if (!cap.isOpened()) {
		std::cerr << "Couldn't open video" << std::endl;
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
