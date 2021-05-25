.class Lcom/android/server/zgw$you;
.super Lcom/android/server/am/gck;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/zgw;


# direct methods
.method private constructor <init>(Lcom/android/server/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw$you;->you:Lcom/android/server/zgw;

    invoke-direct {p0}, Lcom/android/server/am/gck;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw$you;-><init>(Lcom/android/server/zgw;)V

    return-void
.end method


# virtual methods
.method public dma(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw$you;->you:Lcom/android/server/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/zgw;->y(I)V

    return-void
.end method
