.class Lsis/zta/zta/zta/zta/zta$you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsis/zta/zta/zta/zta/zta$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsis/zta/zta/zta/zta/zta$you;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lsis/zta/zta/zta/zta/zta$you;

.field final synthetic zta:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lsis/zta/zta/zta/zta/zta$you$zta;->you:Lsis/zta/zta/zta/zta/zta$you;

    iput-object p2, p0, Lsis/zta/zta/zta/zta/zta$you$zta;->zta:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsis/zta/zta/zta/zta/zta$you$zta;->zta:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lsis/zta/zta/zta/zta/zta$you$zta;->zta:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p1, p0, Lsis/zta/zta/zta/zta/zta$you$zta;->zta:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lsis/zta/zta/zta/zta/zta$you$zta;->zta:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
