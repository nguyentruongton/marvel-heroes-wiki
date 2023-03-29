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
import { useNavigate, useParams } from "react-router-dom";
import { Box, Stack } from "@mui/material";
import axiosClient from "../axios-client";

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
});

export default function Detail(openDetail) {
    const [open, setOpen] = React.useState(openDetail);
    const navigate = useNavigate();
    const handleClose = () => {
        // setOpen(false);
        navigate("/");
    };

    const { id } = useParams();
    const [hero, setHero] = React.useState({
        id: null,
        avatar: "",
        alias: "",
        realName: "",
        description: "",
    });

    if (id) {
        React.useEffect(() => {
            axiosClient
                .get(`/heros/${id}`)
                .then((data) => {
                    setHero(data.data);
                    document.title = data.data.alias;
                })
                .catch((err) => {
                    console.log(err);
                });
        }, [id]);
    }

    return (
        <Dialog maxWidth={400} open={open} TransitionComponent={Transition}>
            <AppBar
                elevation={0}
                sx={{ position: "relative", bgcolor: "#F0131E" }}
            >
                <Toolbar>
                    <Typography sx={{ flex: 1 }} variant="h6" component="div">
                        Thông tin về {hero.alias}
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
                <Box
                    sx={{
                        display: "flex",
                        gap: "40px",
                    }}
                >
                    <img src={hero.avatar} alt="avatar" width={400} />
                    <Stack spacing={1}>
                        <Box
                            sx={{
                                display: "flex",
                                gap: "8px",
                                alignItems: "baseline",
                            }}
                        >
                            <Typography sx={{ color: "#F0131E" }} variant="h6">
                                Bí danh
                            </Typography>
                            <Typography variant="subtitle1">
                                {hero.alias}
                            </Typography>
                        </Box>
                        <Box
                            sx={{
                                display: "flex",
                                gap: "8px",
                                alignItems: "baseline",
                            }}
                        >
                            <Typography sx={{ color: "#F0131E" }} variant="h6">
                                Tên thật
                            </Typography>
                            <Typography variant="subtitle1">
                                {hero.realName}
                            </Typography>
                        </Box>
                        <Typography sx={{ color: "#F0131E" }} variant="h6">
                            Tiểu sử
                        </Typography>
                        <Typography
                            maxWidth={400}
                            variant="subtitle2"
                            align="justify"
                        >
                            {hero.description}
                        </Typography>
                    </Stack>
                </Box>
            </Box>
        </Dialog>
    );
}
