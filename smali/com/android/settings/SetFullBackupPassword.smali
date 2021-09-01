.class public Lcom/android/settings/SetFullBackupPassword;
.super Lcom/oneplus/settings/BaseActivity;
.source "SetFullBackupPassword.java"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SetFullBackupPassword$1;-><init>(Lcom/android/settings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SetFullBackupPassword"

    const-string p1, "Unable to communicate with backup manager"

    .line 110
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "backup"

    .line 86
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 88
    sget p1, Lcom/android/settings/R$layout;->set_backup_pw:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 90
    sget p1, Lcom/android/settings/R$id;->current_backup_pw:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    .line 91
    sget p1, Lcom/android/settings/R$id;->new_backup_pw:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    .line 92
    sget p1, Lcom/android/settings/R$id;->confirm_new_backup_pw:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    .line 94
    sget p1, Lcom/android/settings/R$id;->backup_pw_cancel_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    .line 95
    sget p1, Lcom/android/settings/R$id;->backup_pw_set_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    .line 97
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
