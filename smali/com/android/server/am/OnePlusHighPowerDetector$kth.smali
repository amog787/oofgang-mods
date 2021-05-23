.class Lcom/android/server/am/OnePlusHighPowerDetector$kth;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "kth"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$kth;->you:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;Lcom/android/server/am/OnePlusHighPowerDetector$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector$kth;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    return-void
.end method


# virtual methods
.method public zta(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$kth;->you:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/OnePlusHighPowerDetector;)Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
