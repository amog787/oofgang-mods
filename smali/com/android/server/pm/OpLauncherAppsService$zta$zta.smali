.class Lcom/android/server/pm/OpLauncherAppsService$zta$zta;
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

    iput-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/pm/OpLauncherAppsService$zta$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService$zta;

    iget-object p0, p0, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    iget-object p0, p0, Lcom/android/server/pm/OpLauncherAppsService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
