#include"function.h"

vector<GpuMat> channels;
GpuMat H, S, V, hue, HL, HH,INPUT;
GpuMat SL, SH, saturation,VL,HS,Small;
Mat hsvfinal,small;
GpuMat hsv,hsvmiddle,hsvlast;
Mat element3 = getStructuringElement(MORPH_RECT, Size(5, 5));

Point2f XY;

struct OUTPUT land_vedio(GpuMat input,vedioland parameter)
{
			OUTPUT land_output;

			XY.x=240-20;
			XY.y=240+50;
			
			
			Point2f circle_center;
			circle_center.x=XY.x;
			circle_center.y=XY.y;

			//gpu::resize(frame, Small, Size(480, 480));
			//gpu::midianBlur(Small,midian,3);
			gpu::cvtColor(input, INPUT, COLOR_BGR2HSV);
			gpu::split(INPUT, channels);
			H = channels.at(0);
			S = channels.at(1);
			V = channels.at(2);
			gpu::threshold(H, HH, parameter.landh, 255, THRESH_BINARY_INV);
			gpu::threshold(H, HL, parameter.landl, 255, THRESH_BINARY);
			gpu::bitwise_and(HL, HH, hue);

			gpu::threshold(S, SL, 90, 255, THRESH_BINARY);
			gpu::threshold(S, SH, 255, 255, THRESH_BINARY_INV);
			gpu::bitwise_and(SL, SH, saturation);
			gpu::threshold(V, VL, 46, 255, THRESH_BINARY);
			gpu::bitwise_and(hue, saturation, HS);
			gpu::bitwise_and(VL, HS, hsv);
			gpu::erode(hsv, hsvmiddle, element3);
			gpu::dilate(hsvmiddle,hsvlast, element3);
			input.download(small);
			hsvlast.download(hsvfinal);
			//imshow(" ",final4);
			//temp_copy = final4.clone();//imshow("yuan",temp_copy);
			vector<vector<Point> > contemp;
			vector<vector<Point> > contours;
			vector<Point> airport;
			Mat result(Size(480,480),CV_8UC1,Scalar(0));
			float proportion = 0.0;
			findContours(hsvfinal, contemp, RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);
			for (unsigned int j = 0; j < contemp.size(); j++)
			{
				if (contourArea(contemp[j]) > 3000)
					contours.push_back(contemp[j]);

			}
			vector<vector<Point> > hull(contours.size());
			vector<Point2f> center(contours.size());
			vector<float> radius(contours.size());
			for (unsigned int i = 0; i < contours.size(); i++)
			{
				minEnclosingCircle(contours[i], center[i], radius[i]);
				convexHull(Mat(contours[i]), hull[i], false);
				float area = contourArea(hull[i]);
				float yuan = 3.14 * radius[i] * radius[i];


				if (area / yuan > 0.78)
				{
					if(area / yuan > proportion)
					{
						drawContours(small,hull,i, Scalar(50,50,255), 3);
						circle_center = center[i];
					}
					
					proportion = area / yuan;
						
				}

			}

			//drawContours(final4,airport,-1, Scalar(255), 3);
			circle(small, circle_center, 5, Scalar(50,50,255), -1, 8, 0);
			imshow("yuantu",small);
			waitKey(1);
			
			land_output.xy=circle_center-XY;
			land_output.hit=0;
			if(circle_center.x==0&&circle_center.y==0)
			{
			land_output.led=1;
			}	
			else
			{
			land_output.led=2;
			}

			return 	land_output;
}
