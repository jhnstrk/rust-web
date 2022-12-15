use weblib::Video;
use yew::prelude::*;

#[derive(Properties, PartialEq)]
pub struct VideosDetailsProps {
    pub video: Video,
}

#[function_component(VideoDetails)]
pub fn video_details(VideosDetailsProps { video }: &VideosDetailsProps) -> Html {
    html! {
        <div>
            <h3>{ video.title.clone() }</h3>
            <img src="https://via.placeholder.com/640x360.png?text=Video+Player+Placeholder" alt="video thumbnail" />
        </div>
    }
}
