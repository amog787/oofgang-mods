.class public Lcom/android/settings/applications/ProcStatsPackageEntry;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAvgBgMem:J

.field mAvgRunMem:J

.field mBgDuration:J

.field mBgWeight:D

.field final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field mMaxBgMem:J

.field mMaxRunMem:J

.field final mPackage:Ljava/lang/String;

.field mRunDuration:J

.field mRunWeight:D

.field public mUiLabel:Ljava/lang/String;

.field public mUiTargetApp:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lcom/android/settings/applications/ProcStatsPackageEntry$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public static getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    .line 168
    sget v0, Lcom/android/settings/R$string;->always_running:I

    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 169
    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 168
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 171
    sget v0, Lcom/android/settings/R$string;->sometimes_running:I

    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 172
    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 171
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_1
    sget v0, Lcom/android/settings/R$string;->rarely_running:I

    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 175
    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 174
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBgWeight()D
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    return-wide v0
.end method

.method public getEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRunWeight()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    return-wide v0
.end method

.method public retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    :try_start_0
    const-string v1, "os"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x408200

    if-eqz v0, :cond_0

    const-string v0, "android"

    .line 118
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 122
    sget p2, Lcom/android/settings/R$string;->process_stats_os_label:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "could not find package: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProcStatsEntry"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateMetrics()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    const-wide/16 v2, 0x0

    .line 88
    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 89
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 90
    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 94
    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    iget-wide v5, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 95
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 96
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 97
    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v5, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 98
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 99
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 105
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    .line 106
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 109
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    div-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 142
    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 148
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
