import React, { useEffect, useState } from 'react';
import '../css/App.css';
import PermanentDrawerLeft from './PermanentDrawerLeft';
import useFetch from '../hooks/useFetch';

const App: React.FC = () => {
  const [projects, loading] = useFetch('PROJECT');

  useEffect(() => {
  }, [projects])

  return (
    <div className="App">
      <PermanentDrawerLeft projects={projects} />
    </div>
  );
}

export default App;
