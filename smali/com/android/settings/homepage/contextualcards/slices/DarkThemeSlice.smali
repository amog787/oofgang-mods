.class public Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;
.super Ljava/lang/Object;
.source "DarkThemeSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static sActiveUiSession:J

.field static sKeepSliceShow:Z

.field static sPreChecked:Z

.field static sSliceClicked:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->DEBUG:Z

    const-wide/16 v0, -0x3e8

    .line 60
    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sActiveUiSession:J

    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    .line 63
    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sPreChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    .line 71
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mUiModeManager:Landroid/app/UiModeManager;

    .line 72
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private isNightModeScheduled()Z
    .locals 2

    .line 175
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    .line 176
    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "night mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DarkThemeSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onNotifyChange$0(Z)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    return-void
.end method

.method private resetValue(ZZ)V
    .locals 0

    .line 170
    sput-boolean p1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sPreChecked:Z

    .line 171
    sput-boolean p2, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 153
    const-class p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 10

    .line 77
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getUiSessionToken()J

    move-result-wide v0

    .line 79
    sget-wide v2, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sActiveUiSession:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 80
    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sActiveUiSession:J

    .line 81
    sput-boolean v3, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    .line 91
    :cond_0
    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sKeepSliceShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sSliceClicked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DarkThemeSlice"

    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 103
    :cond_3
    sput-boolean v1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$drawable;->dark_theme:I

    .line 107
    invoke-static {v2, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 109
    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v6

    .line 110
    sget-boolean v7, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sPreChecked:Z

    if-eq v7, v6, :cond_4

    .line 112
    invoke-direct {p0, v6, v3}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->resetValue(ZZ)V

    .line 114
    :cond_4
    new-instance v7, Landroidx/slice/builders/ListBuilder;

    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v7, v8, v9, v4, v5}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 116
    invoke-virtual {v7, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->dark_theme_slice_title:I

    .line 118
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 119
    invoke-virtual {v1, v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->dark_theme_slice_subtitle:I

    .line 120
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const/4 p0, 0x0

    .line 122
    invoke-static {v0, p0, v6}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 121
    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 117
    invoke-virtual {v7, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 124
    invoke-virtual {v7}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 98
    :cond_5
    :goto_0
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v2, v4, v5}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 100
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    .line 101
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 129
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 159
    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->isNightModeScheduled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    const-class p0, Landroid/os/BatteryManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 p1, 0x4

    .line 164
    invoke-virtual {p0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "battery level = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DarkThemeSlice"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x32

    if-gt p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public synthetic lambda$onNotifyChange$0$DarkThemeSlice(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->lambda$onNotifyChange$0(Z)V

    return-void
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->resetValue(ZZ)V

    .line 141
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$DarkThemeSlice$_s2iKR_lEhdSCVKkB_3a97GGi_k;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$DarkThemeSlice$_s2iKR_lEhdSCVKkB_3a97GGi_k;-><init>(Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;Z)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
