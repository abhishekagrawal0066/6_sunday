<?php
if ($_POST['action'] == "send_message") {
    $flieHandler = fopen(__DIR__ . "/chat_messages.txt", "a");
    fwrite($flieHandler, $_POST['sender'] . " : " . $_POST['message'] . "\n");

    fclose($flieHandler);
    exit;
}

if ($_POST['read_action'] == "read_message") {
    $flieHandler = fopen(__DIR__ . "/chat_messages.txt", "r");
    while (!feof($flieHandler)) {
        $data .= fgets($flieHandler) . "<br>";
    }
    echo $data;
    exit;
}
include('../../header.php');
?>
<div class="container-fluid py-5">
    <div class="row">
        <?php include('../sidebar.php') ?>
        <div class="col-lg-9">
            <div class="file-data">
                <div class="display-6">
                    Create a chat application for 2 users
                    <p class="text-secondary h3">Input</p>
                    <ul class="h4">
                        <li>Textbox for Name</li>
                        <li>Text area for Message</li>
                    </ul>
                    <p class="text-secondary h3">Output</p>
                    <p class="h4"> Message will display in chat area with name.</p>
                </div>
                <hr class="py-1">
                <div class="row">
                    <div class="col-md-7">
                        <form action="javascript:void()" method="post">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <label for="senderName" class="input-group-text">Sender</label>
                                        <input type="text" name="senderName" id="senderName" class="form-control" placeholder="Sender Name">
                                    </div>
                                    <p class="text-danger" id="message1"></p>
                                </div>
                                <div class="col-md-5">
                                    <div class="input-group">
                                        <label for="message" class="input-group-text">Message</label>
                                        <input type="text" name="message" id="message" class="form-control" placeholder="Type your message here...">
                                    </div>
                                    <p class="text-danger" id="message2"></p>
                                </div>
                                <div class="col-md-4">
                                    <button class="btn btn-success w-100" id="send"><em class="fa fa-send"> </em> Send</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4 border border-primary border-4 pb-4">
                        <div class="py-1 bg-dark ">
                            <img src=" <?php echo SITE_URL ?>/Images/profile_pic.webp" class="w-25 rounded-circle" alt="pic"> 
                            <span class="text-light ps-5">Hiren Kuriya</span>
                        </div>
                        <p id="chats" class="text-dark"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="ajax/chat_app.js"></script>
<?php include('../../footer.php'); ?>
