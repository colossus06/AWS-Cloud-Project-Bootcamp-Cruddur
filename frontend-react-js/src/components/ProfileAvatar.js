import './ProfileAvatar.css';
import Image from './/imgs/profile.png'; // Import using relative path

export default function ProfileAvatar(props) {
 
  const backgroundImage = `url(${Image})`
  const styles = {
    backgroundImage: backgroundImage,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
  };

  
  return (
    <div 
      className="profile-avatar"
      style={styles}
    ></div>
  );
}