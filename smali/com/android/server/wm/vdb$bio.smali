.class Lcom/android/server/wm/vdb$bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/vdb;->killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/wm/vdb;

.field final synthetic you:Landroid/content/pm/ActivityInfo;

.field final synthetic zta:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/vdb;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/vdb$bio;->sis:Lcom/android/server/wm/vdb;

    iput-object p2, p0, Lcom/android/server/wm/vdb$bio;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p3, p0, Lcom/android/server/wm/vdb$bio;->you:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OpQuickReply"

    const-string v1, "kill IME before start it"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/vdb$bio;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/wm/vdb$bio;->you:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService;->killApplicationProcess(Ljava/lang/String;I)V

    return-void
.end method
