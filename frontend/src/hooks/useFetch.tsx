import { useState, useEffect } from "react";
import ProjectService from '../services/ProjectService';

const useFetch = (model: string) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);

  const fetchUrl = async () => {
    let response:any
    switch (model) {
      case 'PROJECT':
        response = await ProjectService.list();
        break;
    }
    setData(response);
    setLoading(false);
  }

  useEffect(() => {
    fetchUrl();
  }, []);

  return [data, loading];
}
export default useFetch;
