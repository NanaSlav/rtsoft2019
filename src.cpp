#include<opencv2/opencv.hpp>
#include <iostream>

using namespace cv;

int main (int argc, char *argv[]) {
	namedWindow("Camera", WINDOW_AUTOSIZE);
	VideoCapture cap;
	
	cap.open(argv[1]);
	
	if (!cap.isOpened()) {
		std::cerr << "Couldn't open video" << std::endl;
		return -1;
	}

	Mat frame;

	while (true) {
		cap >> frame;
		if (frame.empty()) break;
		imshow("Camera", frame);
		if ((char) waitKey(33) >= 0 ) break;
	}
	return 0;
}
