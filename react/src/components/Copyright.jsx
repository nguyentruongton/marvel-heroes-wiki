export default function Copyright() {
    return (
        <div className="flex justify-between items-center">
            <a className="no-underline hover:text-vividRed" href="/">
                Copyright © MCU Hero Wiki {new Date().getFullYear()}
            </a>
        </div>
    );
}
