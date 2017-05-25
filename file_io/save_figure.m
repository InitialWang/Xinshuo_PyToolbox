% Author: Xinshuo Weng
% email: xinshuo.weng@gmail.com

% save the current figure to file
function save_figure(save_path, im_size)
    assert(ischar(save_path), 'save path is not correct.');
    path_parent = fileparts(save_path);
    mkdir_if_missing(path_parent);

    fig = getframe;
    img = fig.cdata;
    if exist('im_size', 'var')
    	im_size = check_imageSize(im_size);
    	img = imresize(img, im_size);
    end
   
    imwrite(img, save_path);
end