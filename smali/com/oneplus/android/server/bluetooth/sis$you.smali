.class Lcom/oneplus/android/server/bluetooth/sis$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field public cno:I

.field final synthetic kth:Lcom/oneplus/android/server/bluetooth/sis;

.field public rtg:I

.field public sis:Ljava/lang/String;

.field public ssp:I

.field public tsu:I

.field public you:I

.field public zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/sis;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->kth:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->you:I

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->sis:Ljava/lang/String;

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->tsu:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->rtg:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->ssp:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->cno:I

    return-void
.end method
