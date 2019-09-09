import axios from 'axios';
import Config from './config';

const list = () => {
  return axios.get(Config.api_url + 'projects')
    .then(res => {
      return res.data;
    })
    .catch(error => console.log(error));
}

export default {
  list: list
}
