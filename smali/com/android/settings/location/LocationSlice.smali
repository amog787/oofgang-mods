.class public Lcom/android/settings/location/LocationSlice;
.super Ljava/lang/Object;
.source "LocationSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    iget-object p0, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->location_settings_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 89
    iget-object v3, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/location/LocationSettings;

    .line 90
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    .line 89
    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 9

    .line 57
    iget-object v0, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const v1, 0x1080535

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->location_settings_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    .line 61
    invoke-direct {p0}, Lcom/android/settings/location/LocationSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    .line 62
    invoke-static {v3, v0, v4, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    .line 65
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v5, p0, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 67
    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 69
    invoke-virtual {p0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 70
    invoke-virtual {p0, v0, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 71
    invoke-virtual {p0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 68
    invoke-virtual {v5, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 72
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 77
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
