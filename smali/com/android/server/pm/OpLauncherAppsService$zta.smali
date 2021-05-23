.class Lcom/android/server/pm/OpLauncherAppsService$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OpLauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/pm/OpLauncherAppsService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OpLauncherAppsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    const v2, 0x50f00fd

    const v3, 0x50f00fc

    const v4, 0x50f00fb

    const v5, 0x50f00f6

    new-instance v6, Lcom/android/server/pm/OpLauncherAppsService$zta$zta;

    invoke-direct {v6, p0}, Lcom/android/server/pm/OpLauncherAppsService$zta$zta;-><init>(Lcom/android/server/pm/OpLauncherAppsService$zta;)V

    :goto_0
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/OpLauncherAppsService;->access$000(Lcom/android/server/pm/OpLauncherAppsService;IIIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/OpLauncherAppsService$zta;->zta:Lcom/android/server/pm/OpLauncherAppsService;

    const v2, 0x50f00f9

    const v3, 0x50f00f7

    const v4, 0x50f00f8

    const v5, 0x50f00f6

    new-instance v6, Lcom/android/server/pm/OpLauncherAppsService$zta$you;

    invoke-direct {v6, p0}, Lcom/android/server/pm/OpLauncherAppsService$zta$you;-><init>(Lcom/android/server/pm/OpLauncherAppsService$zta;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
