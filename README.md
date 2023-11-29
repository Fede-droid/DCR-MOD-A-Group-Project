# Image Quality Evaluation Project

## Introduction
Good morning! I'm [Your Name], and this README will guide you through our Image Quality Evaluation project. In the next few minutes, we'll walk you through our project phases and highlight critical aspects of the results we've achieved.

## Topics to be Covered
In this README, we'll cover:

- Introduction of Image Quality Evaluation
- Project Overview
- Results and Comments

## Image Quality Evaluation Explained
- **Definition:** Image quality evaluation is a systematic process where we meticulously examine the visual aspects of an image to determine its quality.
- **Purpose:** The primary goal is to objectively measure and analyze image quality, ensuring visual content meets defined standards. This process aids decision-making in photography, design, and computer vision, enhancing the overall user experience.

## Project Phases
Our project involved an Image Quality Evaluation session, where group members collected and presented images for individual scoring (1 to 5) based on perceived beauty. Key phases included:

## Project Execution
1. Selection of grayscale images with a resolution of 512x512 in JPG format.
2. Each group member found and compressed their chosen image using Matlab.
3. Images were stored in a Drive folder.
4. Matlab code was created to randomize image display for evaluation.
5. Excel sheets were used for data collection.
6. Histograms were generated with Matlab for result evaluation.
7. Group evaluation and discussion of results.

## Results Analysis
- General histogram displaying average scores for each image and category.
- Specific examples with image scores and comments.

### Example Commentaries:
- Equal scores for the original and medium-compressed photograph.
- Surprisingly low scores for both the original and medium compression.
- Low scores for both medium and low compression.
- Consistent scores reflecting image quality and compression.

### Variance Comment:
- A lower variance, as seen in 'low compression,' indicates results closer to the mean value.

Feel free to explore the visual representations and comments for a deeper understanding of our Image Quality Evaluation project.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# MATLAB Code: Display Multiple Images (display_imgs.m)

This MATLAB code is designed to display a series of images in full-screen mode. The code utilizes the `imshow` function to showcase images, and each image is opened in a new figure window.

## Usage

To use this code:

1. Replace the file names ("26.jpg", "21.jpg", ...) with the names of your own image files.
2. Ensure all the images are in the same directory as your MATLAB script.

```matlab
figure;
imshow("26.jpg");
set(gcf, 'Position', get(0, 'Screensize'));

figure;
imshow("21.jpg");
set(gcf, 'Position', get(0, 'Screensize'));

% Continue this pattern for the remaining images...
```

## Interpretation

- Each `figure` command opens a new window to display a specific image.
- The `imshow` function is used to show the corresponding image in each figure.
- `set(gcf, 'Position', get(0, 'Screensize'))` ensures that each figure occupies the entire screen.

Feel free to customize this code to suit your needs. Add or remove images as necessary, and modify the file names accordingly. If you have any questions or suggestions, please don't hesitate to reach out!

**Note:** Ensure that your MATLAB script and images are in the same directory for seamless execution.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# MATLAB Code: Image Histograms (histograms.m)

This MATLAB code generates histograms for the 'original,' 'medium,' and 'low' image sets. The histograms provide insights into the distribution of scores for each category.

## Usage

1. **Histograms for Individual Categories**
   - The code first generates histograms for the 'original,' 'medium,' and 'low' categories, displaying them side by side.
   - Each histogram is represented as a stem plot with filled markers, maintaining consistent scales for clarity.
   - The x-axis is labeled from 0 to 10, avoiding the default 2-4-6... format.
   - The 'grid on' command enhances readability.

```matlab
figure;
subplot(1,3,1);
stem(original,'filled', 'LineWidth',3);
xlim([0 10]);
ylim([0 5]);
xticks(0:10);
title('original');
grid on

subplot(1,3,2);
stem(medium,'filled', 'LineWidth',3);
xlim([0 10]);
ylim([0 5]);
xticks(0:10);
title('medium');
grid on

subplot(1,3,3);
stem(low,'filled', 'LineWidth',3);
xlim([0 10]);
ylim([0 5]);
xticks(0:10);
title('low');
grid on
```

2. **Final Combined Histogram**
   - The code then calculates the mean and variance for each image category ('original,' 'medium,' 'low').
   - Finally, it creates a combined histogram that compares the average scores of each category.
   - The histogram is labeled with mean and variance values for each category.

```matlab
l_tot = sum(low)/length(low);
m_tot = sum(medium)/length(medium);
o_tot = sum(original)/length(original);
counts = [o_tot, m_tot, l_tot];

l_var = var(low);
m_var = var(medium);
o_var = var(original);

figure;
histogram('Categories',{'Original','Medium','Low'}, 'BinCounts',counts)
title(sprintf('Original: m=%.2f var=%.2f \n Medium: m=%.2f var=%.2f \n Low: m=%.2f var=%.2f ',o_tot,o_var,m_tot,m_var,l_tot,l_var));
```

## Interpretation
- The individual histograms reveal the distribution of scores for each image category.
- The combined histogram offers a comparative view of average scores across categories, providing an insightful summary.

Feel free to use and modify this code for your image evaluation tasks. If you have any questions or suggestions, please don't hesitate to reach out!
