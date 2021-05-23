.class Lcom/oneplus/server/hypnus/HypnusService$zta;
.super Lcom/android/server/SystemService;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/hypnus/HypnusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic you:Lcom/oneplus/server/hypnus/HypnusService;

.field zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/server/hypnus/HypnusService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/hypnus/HypnusService$zta;->you:Lcom/oneplus/server/hypnus/HypnusService;

    invoke-direct {p0, p2}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/server/hypnus/HypnusService$zta;->zta:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    return-void
.end method

.method public zta()Landroid/hardware/display/DisplayManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/hypnus/HypnusService$zta;->you:Lcom/oneplus/server/hypnus/HypnusService;

    invoke-static {v0}, Lcom/oneplus/server/hypnus/HypnusService;->access$000(Lcom/oneplus/server/hypnus/HypnusService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HypnusService"

    const-string v1, "getDisplayManager()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method
