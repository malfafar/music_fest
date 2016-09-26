class Photo < ActiveRecord::Base

  has_attached_file :photo, styles: { full: "1200x660#", gallery: "500x350#", medium: "300x300#", thumb: "100x100#" },
    default_url: "/images/:style/missing.jpg",
    :convert_options => {
      :large => "-quality 80 -interlace Plane",
      :thumb => "-quality 80 -interlace Plane"
    },
    processors: [:thumbnail, :compression]

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/



end
