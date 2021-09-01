.class public Lcom/android/settings/widget/EntityHeaderController;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"


# instance fields
.field private mAction1:I

.field private mAction2:I

.field private final mActivity:Landroid/app/Activity;

.field private final mAppContext:Landroid/content/Context;

.field private mAppNotifPrefIntent:Landroid/content/Intent;

.field private mEditOnClickListener:Landroid/view/View$OnClickListener;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mHasAppInfoLink:Z

.field private final mHeader:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconContentDescription:Ljava/lang/String;

.field private mIsInstantApp:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mMetricsCategory:I

.field private mPackageName:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSecondSummary:Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/CharSequence;

.field private mUid:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 88
    iput v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    .line 113
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 116
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    if-eqz p3, :cond_0

    .line 119
    iput-object p3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->op_settings_entity_header:I

    const/4 p3, 0x0

    .line 122
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/EntityHeaderController;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/EntityHeaderController;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    return p0
.end method

.method private bindAppInfoLink(Landroid/view/View;)V
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "os"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    new-instance v0, Lcom/android/settings/widget/EntityHeaderController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/EntityHeaderController$1;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "AppDetailFeature"

    const-string p1, "Missing ingredients to build app info link, skip"

    .line 291
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private bindButton(Landroid/widget/ImageButton;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    return-void

    .line 346
    :cond_1
    iget-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditOnClickListener:Landroid/view/View$OnClickListener;

    if-nez p2, :cond_2

    .line 347
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const p2, 0x10804df

    .line 349
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 350
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 351
    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 356
    :cond_3
    iget-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    if-nez p2, :cond_4

    .line 357
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 359
    :cond_4
    new-instance p2, Lcom/android/settings/widget/-$$Lambda$EntityHeaderController$Brnf7eM6QIyUvT-lfd4xVnC8TCw;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/-$$Lambda$EntityHeaderController$Brnf7eM6QIyUvT-lfd4xVnC8TCw;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void

    .line 372
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$bindButton$0(Landroid/view/View;)V
    .locals 6

    .line 360
    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    const/4 v1, 0x0

    const/16 v2, 0x3f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 361
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 365
    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1

    .line 109
    new-instance v0, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 381
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->entity_header_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 275
    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 276
    invoke-direct {p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->bindAppInfoLink(Landroid/view/View;)V

    .line 277
    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    .line 278
    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    invoke-direct {p0, v2, v0}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    return-object p0
.end method

.method done(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public done(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 2

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 249
    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->entity_header_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    sget p1, Lcom/android/settings/R$id;->entity_header_title:I

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 255
    sget p1, Lcom/android/settings/R$id;->entity_header_summary:I

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 256
    sget p1, Lcom/android/settings/R$id;->entity_header_second_summary:I

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 257
    iget-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    if-eqz p1, :cond_1

    .line 258
    sget p1, Lcom/android/settings/R$id;->install_type:I

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->install_type_instant:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/widget/EntityHeaderController;->bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;

    .line 266
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method public done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 1

    .line 234
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 p0, -0x3e8

    .line 236
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    const/4 p0, 0x0

    .line 237
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const-string p1, "pref_app_header"

    .line 238
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/LayoutPreference;->setAllowDividerBelow(Z)V

    return-object v0
.end method

.method public synthetic lambda$bindButton$0$EntityHeaderController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->lambda$bindButton$0(Landroid/view/View;)V

    return-void
.end method

.method public setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 200
    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    .line 201
    iput p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    return-object p0
.end method

.method public setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object p0
.end method

.method public setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconContentDescription(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    return-object p0
.end method

.method public setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 165
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method public setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    :cond_0
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    .line 211
    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    return-object p0
.end method

.method public styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 3

    const-string v0, "AppDetailFeature"

    if-nez p1, :cond_0

    const-string p1, "No activity, cannot style actionbar."

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "No actionbar, cannot style actionbar."

    .line 318
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 321
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x1010434

    .line 323
    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 321
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 324
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 325
    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v0, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lcom/android/settingslib/widget/ActionBarShadowController;->attachToView(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)Lcom/android/settingslib/widget/ActionBarShadowController;

    :cond_2
    return-object p0
.end method
