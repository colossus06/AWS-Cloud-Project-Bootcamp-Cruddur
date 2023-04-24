import './ProfileHeading.css';
import EditProfileButton from '../components/EditProfileButton';
import Image from './/imgs/banner.png'; // Import using relative path

import ProfileAvatar from 'components/ProfileAvatar'

export default function ProfileHeading(props) {
  const backgroundImage = `url(${Image})`
  const styles = {
    backgroundImage: backgroundImage,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
  };


  return (
    <div className='activity_feed_heading profile_heading'>
      <div className='title'>simo</div>
      <div className="cruds_count">{props.profile.cruds_count} Cruds</div>
      <div className="banner" style={styles} >
        <ProfileAvatar id="9b5e1106-aa4a-4847-a4ea-674fec6ebfe5" />
      </div>
      <div className="info">
        <div className='id'>
          <div className="display_name">{props.profile.display_name}</div>
          <div className="handle">@{props.profile.handle}</div>
        </div>
        <EditProfileButton setPopped={props.setPopped} />
      </div>
      <div className="bio">{props.profile.bio}</div>
  
    </div>
    );
  }