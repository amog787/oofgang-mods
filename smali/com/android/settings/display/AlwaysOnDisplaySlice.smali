.class public Lcom/android/settings/display/AlwaysOnDisplaySlice;
.super Ljava/lang/Object;
.source "AlwaysOnDisplaySlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field private static final MY_USER:I


# instance fields
.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 62
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 9

    .line 67
    iget-object v0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AlwaysOnDisplaySlice;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    .line 73
    iget-object v3, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v4, Lcom/android/settings/display/AlwaysOnDisplaySlice;->MY_USER:I

    invoke-virtual {v3, v4}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v3

    .line 75
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->ALWAYS_ON_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 77
    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->doze_always_on_title:I

    .line 79
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object p0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->doze_always_on_summary:I

    .line 80
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 82
    invoke-static {v0, v1, v3}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 81
    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 78
    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 84
    invoke-virtual {v4}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 89
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->ALWAYS_ON_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/settings/aware/AwareFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v2

    .line 98
    iget-object v3, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-interface {v3, p0}, Lcom/android/settings/aware/AwareFeatureProvider;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    const-string v3, "doze_always_on"

    .line 100
    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p0, "doze_wake_display_gesture"

    .line 101
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
