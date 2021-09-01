.class public final Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAnomalyTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mScreenOnTimeMs:J

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mAnomalyTypes:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)Landroid/util/ArraySet;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mAnomalyTypes:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mScreenOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mUid:I

    return p0
.end method


# virtual methods
.method public build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .locals 2

    .line 133
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;-><init>(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;)V

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenOnTimeMs(J)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mScreenOnTimeMs:J

    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mUid:I

    return-object p0
.end method
