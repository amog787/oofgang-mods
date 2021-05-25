.class Lcom/android/server/wm/ywr$zta$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ywr$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/ywr$zta;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ywr$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadMode2: onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeActivityStack"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v0}, Lcom/android/server/wm/ywr$zta;->rtg(Lcom/android/server/wm/ywr$zta;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v0}, Lcom/android/server/wm/ywr$zta;->rtg(Lcom/android/server/wm/ywr$zta;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oem.intent.action.ENABLE_READ_MODE_NOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "uid"

    const-string v2, "packageName"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v1, v0, p2}, Lcom/android/server/wm/ywr$zta;->cno(Lcom/android/server/wm/ywr$zta;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v1}, Lcom/android/server/wm/ywr$zta;->you(Lcom/android/server/wm/ywr$zta;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v4, "reading_mode_option_manual"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-nez v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v4}, Lcom/android/server/wm/ywr$zta;->you(Lcom/android/server/wm/ywr$zta;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x50f00b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v3}, Lcom/android/server/wm/ywr$zta;->you(Lcom/android/server/wm/ywr$zta;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x50f00b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    const v4, 0x5100233

    invoke-direct {v3, p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {p1}, Lcom/android/server/wm/ywr$zta;->you(Lcom/android/server/wm/ywr$zta;)Landroid/content/Context;

    move-result-object p1

    const v4, 0x50f00b4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/server/wm/ywr$zta$sis$you;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/ywr$zta$sis$you;-><init>(Lcom/android/server/wm/ywr$zta$sis;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/android/server/wm/ywr$zta$sis$zta;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/wm/ywr$zta$sis$zta;-><init>(Lcom/android/server/wm/ywr$zta$sis;Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/wm/ywr$zta;->ssp(Lcom/android/server/wm/ywr$zta;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {p1}, Lcom/android/server/wm/ywr$zta;->rtg(Lcom/android/server/wm/ywr$zta;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {p0}, Lcom/android/server/wm/ywr$zta;->rtg(Lcom/android/server/wm/ywr$zta;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {p0, v3, v0, p2}, Lcom/android/server/wm/ywr$zta;->kth(Lcom/android/server/wm/ywr$zta;ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {p0, v4, v0, p2}, Lcom/android/server/wm/ywr$zta;->kth(Lcom/android/server/wm/ywr$zta;ILjava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.oem.intent.action.GO_READ_MODE_SETTINGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v0, v2, p2}, Lcom/android/server/wm/ywr$zta;->cno(Lcom/android/server/wm/ywr$zta;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta$sis;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {p0}, Lcom/android/server/wm/ywr$zta;->bio(Lcom/android/server/wm/ywr$zta;)Landroid/content/Intent;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    :goto_0
    return-void
.end method
