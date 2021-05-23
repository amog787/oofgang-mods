.class Lcom/android/server/hmo$you;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/hmo;


# direct methods
.method private constructor <init>(Lcom/android/server/hmo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hmo$you;->you:Lcom/android/server/hmo;

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hmo;Lcom/android/server/hmo$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hmo$you;-><init>(Lcom/android/server/hmo;)V

    return-void
.end method


# virtual methods
.method public dma(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo$you;->you:Lcom/android/server/hmo;

    invoke-virtual {p0, p1}, Lcom/android/server/hmo;->y(I)V

    return-void
.end method
