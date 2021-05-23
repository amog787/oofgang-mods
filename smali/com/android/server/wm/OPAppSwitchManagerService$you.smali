.class Lcom/android/server/wm/OPAppSwitchManagerService$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/wm/OPAppSwitchManagerService;

.field final synthetic zta:Lcom/android/server/wm/OPAppSwitchSettings;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/OPAppSwitchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$you;->you:Lcom/android/server/wm/OPAppSwitchManagerService;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService$you;->zta:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$you;->zta:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {p0}, Lcom/android/server/wm/OPAppSwitchSettings;->init()V

    return-void
.end method
