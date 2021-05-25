.class Lcom/android/server/pm/OpLauncherAppsService$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/OpLauncherAppsService;->showDialog(IIIILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/pm/OpLauncherAppsService;

.field final synthetic zta:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OpLauncherAppsService;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService$sis;->you:Lcom/android/server/pm/OpLauncherAppsService;

    iput-object p2, p0, Lcom/android/server/pm/OpLauncherAppsService$sis;->zta:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService$sis;->zta:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/OpLauncherAppsService$sis;->you:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-static {v0}, Lcom/android/server/pm/OpLauncherAppsService;->access$100(Lcom/android/server/pm/OpLauncherAppsService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x50502eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/server/pm/OpLauncherAppsService$sis;->zta:Landroid/app/AlertDialog;

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const-string p1, "#FF4081"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
