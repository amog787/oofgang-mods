.class Lcom/android/server/pm/OpLauncherAppsService$zta$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/OpLauncherAppsService$zta;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/pm/OpLauncherAppsService$zta;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OpLauncherAppsService$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$you;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$you;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    iget-object p1, p1, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-static {p1}, Lcom/android/server/pm/OpLauncherAppsService;->access$100(Lcom/android/server/pm/OpLauncherAppsService;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$you;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    iget-object p2, p2, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/pm/OpLauncherAppsService;->access$202(Lcom/android/server/pm/OpLauncherAppsService;Ljava/util/List;)Ljava/util/List;

    iget-object p2, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$you;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    iget-object p2, p2, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-static {p2}, Lcom/android/server/pm/OpLauncherAppsService;->access$300(Lcom/android/server/pm/OpLauncherAppsService;)V

    const/16 p2, 0x3e7

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    iget-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$you;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    iget-object p1, p1, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-static {p1}, Lcom/android/server/pm/OpLauncherAppsService;->access$100(Lcom/android/server/pm/OpLauncherAppsService;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$you;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    iget-object p2, p2, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-static {p2}, Lcom/android/server/pm/OpLauncherAppsService;->access$100(Lcom/android/server/pm/OpLauncherAppsService;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x50f00fa

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p2, Lcom/android/server/pm/OpLauncherAppsService$zta$you$zta;

    invoke-direct {p2, p0}, Lcom/android/server/pm/OpLauncherAppsService$zta$you$zta;-><init>(Lcom/android/server/pm/OpLauncherAppsService$zta$you;)V

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
