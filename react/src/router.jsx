import { createBrowserRouter } from "react-router-dom";
import Login from "./views/Login";
import Detail from "./views/Detail";
import NotFound from "./views/NotFound";
import Home from "./views/Home";
import Admin from "./views/Admin";
import HeroForm from "./views/HeroForm";
import TableHero from "./components/TableHero";
import CreateHero from "./views/CreateHero";

const router = createBrowserRouter([
    {
        path: "/",
        element: <Home />,
    },
    {
        path: "/detail/:id",
        element: <Detail />,
    },
    {
        path: "/login",
        element: <Login />,
    },
    {
        path: "/admin",
        element: <Admin />,
        children: [
            {
                index: "/admin",
                element: <TableHero />,
            },
            {
                path: "/admin/:id",
                element: <HeroForm />,
            },
            {
                path: "/admin/create",
                element: <CreateHero />,
            },
        ],
    },

    {
        path: "*",
        element: <NotFound />,
    },
]);

export default router;
