.class Lcom/android/server/OpPowerControllerService$gwm;
.super Landroid/os/ShellCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "gwm"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/OpPowerControllerService;

.field zta:I


# direct methods
.method constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gwm;->you:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/OpPowerControllerService$gwm;->zta:I

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$gwm;->you:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/OpPowerControllerService;->onShellCommand(Lcom/android/server/OpPowerControllerService$gwm;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .locals 0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method
