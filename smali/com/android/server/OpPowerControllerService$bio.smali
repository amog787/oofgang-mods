.class public Lcom/android/server/OpPowerControllerService$bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "bio"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/OpPowerControllerService;

.field private you:I

.field private zta:[[D


# direct methods
.method public constructor <init>(Lcom/android/server/OpPowerControllerService;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$bio;->sis:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x0

    aput p2, p1, p3

    const-class p2, D

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$bio;->zta:[[D

    iput p3, p0, Lcom/android/server/OpPowerControllerService$bio;->you:I

    return-void
.end method


# virtual methods
.method public sis([[D)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$bio;->zta:[[D

    return-void
.end method

.method public tsu(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/OpPowerControllerService$bio;->you:I

    return-void
.end method

.method public you()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpPowerControllerService$bio;->you:I

    return p0
.end method

.method public zta()[[D
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$bio;->zta:[[D

    return-object p0
.end method
