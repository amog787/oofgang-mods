.class public abstract Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;
.super Ljava/lang/Object;
.source "NetworkCycleDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/NetworkCycleDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/settingslib/net/NetworkCycleDataLoader;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHotspot:Z

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/net/NetworkTemplate;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mCycles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mIsHotspot:Z

    return p0
.end method


# virtual methods
.method public abstract build()Lcom/android/settingslib/net/NetworkCycleDataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setCycles(Ljava/util/ArrayList;)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mCycles:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setHotspot(Z)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mIsHotspot:Z

    return-object p0
.end method

.method public setNetworkTemplate(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method
