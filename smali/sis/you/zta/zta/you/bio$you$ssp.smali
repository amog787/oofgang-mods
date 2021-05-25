.class Lsis/you/zta/zta/you/bio$you$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsis/you/zta/zta/you/bio$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsis/you/zta/zta/you/bio$you;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lsis/you/zta/zta/you/bio$you;

.field final synthetic zta:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lsis/you/zta/zta/you/bio$you;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lsis/you/zta/zta/you/bio$you$ssp;->you:Lsis/you/zta/zta/you/bio$you;

    iput-object p2, p0, Lsis/you/zta/zta/you/bio$you$ssp;->zta:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(ILsis/you/zta/zta/you/gck;)V
    .locals 2

    iget-object v0, p0, Lsis/you/zta/zta/you/bio$you$ssp;->zta:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lsis/you/zta/zta/you/bio$you$ssp;->zta:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p1, p0, Lsis/you/zta/zta/you/bio$you$ssp;->zta:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Lsis/you/zta/zta/you/gck;->rtg(Landroid/os/HwParcel;)V

    iget-object p0, p0, Lsis/you/zta/zta/you/bio$you$ssp;->zta:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
