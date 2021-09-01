.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# instance fields
.field private mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private reportBackToCaller(ILandroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "listener"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 82
    instance-of v0, p0, Landroid/os/Messenger;

    if-nez v0, :cond_1

    return-void

    .line 83
    :cond_1
    check-cast p0, Landroid/os/Messenger;

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 86
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iput p1, v0, Landroid/os/Message;->what:I

    .line 89
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 1

    .line 101
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/android/settings/R$layout;->user_dictionary_add_word:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.USER_DICTIONARY_EDIT"

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.android.settings.USER_DICTIONARY_INSERT"

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 59
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v2, "mode"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 70
    :cond_2
    new-instance p1, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    return-void

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    return-void
.end method
