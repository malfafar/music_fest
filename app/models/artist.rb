class Artist < ActiveRecord::Base

  has_attached_file :avatar, styles: {medium_large: "388x498#", medium: "300x300#", thumb: "100x100#" },
                    default_url: "/images/posts/:style/missing.png",
                    :convert_options =>
                    {
                      :large => "-quality 80 -interlace Plane",
                      :thumb => "-quality 80 -interlace Plane"
                    },
                    processors: [:thumbnail, :compression]
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_attached_file :photo, styles: { large: "800x600#", medium: "718x455#", thumb: "100x100#" },
                    default_url: "/images/posts/:style/missing.png",
                    :convert_options =>
                    {
                      :large => "-quality 80 -interlace Plane",
                      :thumb => "-quality 80 -interlace Plane"
                    },
                    processors: [:thumbnail, :compression]
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  # validate :video_array


  # serialize       :videos, Array
  attr_accessor   :videos_raw

  def videos_raw
    self.videos.join("\n") unless self.videos.nil?
  end

  def videos_raw=(values)

    self.videos = []
    self.videos = values.split("\r\n")

  end

  def facebook_url
    facebook.gsub("https://", "").gsub("http://", "").gsub("www.", "").gsub("/?fref=ts", "")
  end

  def twitter_url
    twitter.gsub("https://", "").gsub("http://", "").gsub("www.", "").gsub("/?fref=ts", "")
  end

  def website_url
    website.gsub("https://", "").gsub("http://", "").gsub("www.", "").gsub("/?fref=ts", "")
  end

  # def video_array
  #   # self.videos = []
  #   # self.videos = videos_raw.split("\n")
  # end

  # before_save do
  #   puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa"
  #   puts videos_raw
  #   puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa"
  #   videos = []
  #   videos = videos_raw.split("#")
  # end

end
