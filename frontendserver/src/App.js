import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap/dist/js/bootstrap.bundle.js'

import { Route, Routes } from "react-router-dom";
import Contact from "./pages/Contact";
import ItemData from "./components/Home/ItemData"
import OrderNow from "./pages/OrderNow";
import Categories from './pages/Categories';
import Productinfo from './pages/Productinfo'
import About from './pages/About';
import PageNav from "./components/PageNav";
import Footer from "./components/Footer";
function App() {
  return(
    <div>
      <PageNav/>
      
      <Routes>
        <Route path='/Order/:id' element={<OrderNow/>}></Route>
        <Route path="Categories/drug/:id" element={<Productinfo/>}></Route>
        <Route path="/" element={<ItemData/>}></Route>
        <Route path="/Categories" element={<Categories/>}></Route>
        <Route path="/About" element={<About/>}></Route>
        <Route path='/Contact' element={<Contact/>}></Route>
      </Routes>
      <Footer/>
    </div>);
}

export default App;
