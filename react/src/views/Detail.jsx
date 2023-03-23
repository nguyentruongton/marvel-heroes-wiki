import * as React from "react";
import Button from "@mui/material/Button";
import Dialog from "@mui/material/Dialog";
import ListItemText from "@mui/material/ListItemText";
import ListItem from "@mui/material/ListItem";
import List from "@mui/material/List";
import Divider from "@mui/material/Divider";
import AppBar from "@mui/material/AppBar";
import Toolbar from "@mui/material/Toolbar";
import IconButton from "@mui/material/IconButton";
import Typography from "@mui/material/Typography";
import CloseIcon from "@mui/icons-material/Close";
import Slide from "@mui/material/Slide";
import { useNavigate } from "react-router-dom";
import { Box } from "@mui/material";

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
});

export default function Detail() {
    const [open, setOpen] = React.useState(true);
    const navigate = useNavigate();
    const handleClose = () => {
        // setOpen(false);
        navigate("/");
    };

    return (
        <Dialog fullScreen open={open} TransitionComponent={Transition}>
            <AppBar
                elevation={0}
                sx={{ position: "relative", bgcolor: "#F0131E" }}
            >
                <Toolbar>
                    <Typography sx={{ flex: 1 }} variant="h6" component="div">
                        Chi tiết
                    </Typography>
                    <IconButton
                        edge="start"
                        color="inherit"
                        onClick={handleClose}
                        aria-label="close"
                    >
                        <CloseIcon />
                    </IconButton>
                </Toolbar>
            </AppBar>
            <Box sx={{ p: 2 }}>
                <img
                    src="https://static.wikia.nocookie.net/marvelcinematicuniverse/images/3/35/IronMan-EndgameProfile.jpg"
                    alt="ironman-avatar"
                    width={400}
                />
                <Typography variant="h6">Iron Man</Typography>
                <Typography variant="h6">Tony Stark</Typography>
                <Typography variant="h6">Tiểu sử</Typography>
                <Typography align="justify">
                    Anthony Edward "Tony" Stark was a billionaire industrialist,
                    a founding member of the Avengers, and the former CEO of
                    Stark Industries. A brash but brilliant inventor, Stark was
                    self-described as a genius, billionaire, playboy, and
                    philanthropist. With his great wealth and exceptional
                    technical knowledge, Stark was one of the world's most
                    powerful men following the deaths of his parents and enjoyed
                    the playboy lifestyle for many years until he was kidnapped
                    by the Ten Rings in Afghanistan, while demonstrating a fleet
                    of Jericho missiles. With his life on the line, Stark
                    created an armored suit which he used to escape his captors.
                    Upon returning home, he utilized several more armors to use
                    against terrorists, as well as Obadiah Stane who turned
                    against Stark. Following his fight against Stane, Stark
                    publicly revealed himself as Iron Man.
                </Typography>
            </Box>
        </Dialog>
    );
}
