.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$OnPreferenceCopyListener;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$SummaryProvider;,
        Landroidx/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroidx/preference/Preference$OnPreferenceClickListener;,
        Landroidx/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCopyingEnabled:Z

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mImageFrame:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroidx/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 336
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 132
    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    const/4 v1, 0x0

    .line 133
    iput v1, p0, Landroidx/preference/Preference;->mViewId:I

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 148
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 150
    iput-boolean v2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 153
    iput-boolean v2, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 154
    iput-boolean v2, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 155
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 157
    iput-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 158
    iput-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 160
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 167
    iput-boolean v2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 169
    sget v3, Landroidx/preference/R$layout;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 185
    iput-boolean v2, p0, Landroidx/preference/Preference;->mCanRecycleLayout:Z

    .line 191
    new-instance v3, Landroidx/preference/Preference$1;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 219
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 221
    sget-object v3, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 228
    sget p2, Landroidx/preference/R$styleable;->Preference_icon:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 231
    sget p2, Landroidx/preference/R$styleable;->Preference_key:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 234
    sget p2, Landroidx/preference/R$styleable;->Preference_title:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 236
    sget p2, Landroidx/preference/R$styleable;->Preference_title:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 239
    sget p2, Landroidx/preference/R$styleable;->Preference_summary:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 242
    sget p2, Landroidx/preference/R$styleable;->Preference_order:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mOrder:I

    .line 245
    sget p2, Landroidx/preference/R$styleable;->Preference_fragment:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 248
    sget p2, Landroidx/preference/R$styleable;->Preference_layout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_layout:I

    sget p4, Landroidx/preference/R$layout;->preference:I

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 251
    sget p2, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 254
    sget p2, Landroidx/preference/R$styleable;->Preference_enabled:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 257
    sget p2, Landroidx/preference/R$styleable;->Preference_selectable:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 260
    sget p2, Landroidx/preference/R$styleable;->Preference_persistent:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 263
    sget p2, Landroidx/preference/R$styleable;->Preference_dependency:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 266
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 269
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 272
    sget p2, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 273
    sget p2, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_0
    sget p2, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 275
    sget p2, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 278
    :cond_1
    :goto_0
    sget p2, Landroidx/preference/R$styleable;->Preference_shouldDisableView:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 279
    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 282
    sget p2, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz p2, :cond_2

    .line 284
    sget p2, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 288
    :cond_2
    sget p2, Landroidx/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 291
    sget p2, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {p1, p2, p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 294
    sget p2, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    invoke-static {p1, p2, p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 297
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .line 1711
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    return-void

    .line 1717
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1718
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1723
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1719
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1720
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private registerDependency()V
    .locals 3

    .line 1521
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1525
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1527
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->registerDependent(Landroidx/preference/Preference;)V

    return-void

    .line 1529
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerDependent(Landroidx/preference/Preference;)V
    .locals 1

    .line 1572
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1576
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    .line 676
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 678
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 679
    check-cast p1, Landroid/view/ViewGroup;

    .line 680
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 681
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1769
    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->shouldCommit()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1770
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .line 1535
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->unregisterDependent(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroidx/preference/Preference;)V
    .locals 0

    .line 1588
    iget-object p0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 1589
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1475
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1480
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    .line 1252
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method final clearWasDetached()V
    .locals 0

    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2

    .line 1378
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 1381
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, -0x1

    return p0

    .line 1390
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 2203
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2204
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2206
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2207
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2208
    iget-boolean p0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 2152
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2153
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2154
    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2155
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 2160
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2156
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1556
    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1560
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1346
    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 449
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2116
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 2118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2120
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    .line 2121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2124
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 2126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    .line 400
    iget-object p0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 793
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 794
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 796
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getId()J
    .locals 2

    .line 1052
    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 382
    iget-object p0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1086
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getLayoutResource()I
    .locals 0

    .line 491
    iget p0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return p0
.end method

.method public getOrder()I
    .locals 0

    .line 713
    iget p0, p0, Landroidx/preference/Preference;->mOrder:I

    return p0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 1688
    iget-object p0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 1

    .line 2084
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 2088
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2090
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 2093
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getPersistedInt(I)I
    .locals 1

    .line 1922
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1926
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1928
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1931
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1815
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1819
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1821
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1824
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1868
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1872
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1874
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1877
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .locals 1

    .line 432
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    return-object v0

    .line 434
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz p0, :cond_1

    .line 435
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 0

    .line 1429
    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object p0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1362
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1366
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 849
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 852
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;
    .locals 0

    .line 1241
    iget-object p0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 757
    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getWidgetLayoutResource()I
    .locals 0

    .line 520
    iget p0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return p0
.end method

.method public hasKey()Z
    .locals 0

    .line 1109
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCopyingEnabled()Z
    .locals 0

    .line 1215
    iget-boolean p0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 925
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 1120
    iget-boolean p0, p0, Landroidx/preference/Preference;->mPersistent:Z

    return p0
.end method

.method public isSelectable()Z
    .locals 0

    .line 946
    iget-boolean p0, p0, Landroidx/preference/Preference;->mSelectable:Z

    return p0
.end method

.method public isSummaryEmpty()Z
    .locals 1

    .line 885
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVisible()Z
    .locals 0

    .line 1010
    iget-boolean p0, p0, Landroidx/preference/Preference;->mVisible:Z

    return p0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 1408
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1409
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    .line 1600
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1606
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1608
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .line 1418
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1419
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 1491
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 2

    .line 1439
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 1441
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1442
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 1445
    :cond_0
    invoke-direct {p0}, Landroidx/preference/Preference;->dispatchSetInitialValue()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V
    .locals 0

    .line 1457
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    const/4 p2, 0x1

    .line 1458
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    const/4 p2, 0x0

    .line 1460
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    throw p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 536
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 539
    iget-object v1, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget v1, p0, Landroidx/preference/Preference;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x1020010

    .line 542
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 545
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 546
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    move-object v1, v2

    :goto_0
    const v5, 0x1020016

    .line 554
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 556
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 557
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 558
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    iget-boolean v6, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v6, :cond_2

    .line 561
    iget-boolean v6, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 565
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 566
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 569
    :cond_3
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    const v1, 0x1020006

    .line 574
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 576
    iget v5, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v5, :cond_5

    iget-object v5, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 577
    :cond_5
    iget-object v5, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    .line 578
    iget-object v5, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    iget v6, p0, Landroidx/preference/Preference;->mIconResId:I

    invoke-static {v5, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 580
    :cond_6
    iget-object v5, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 581
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    :cond_7
    iget-object v5, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    .line 585
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 588
    :cond_8
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    :cond_9
    :goto_2
    sget v1, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mImageFrame:Landroid/view/View;

    if-nez v1, :cond_a

    const v1, 0x102003e

    .line 595
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mImageFrame:Landroid/view/View;

    .line 597
    :cond_a
    iget-object v1, p0, Landroidx/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 598
    iget-object v5, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 599
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 602
    :cond_b
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 609
    :cond_c
    :goto_3
    sget v1, Landroidx/preference/R$id;->text_layout:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 610
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_e

    .line 611
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    .line 613
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSummaryEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 614
    iget-object v5, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/preference/R$dimen;->op_control_margin_list_top2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 615
    iget-object v5, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/preference/R$dimen;->op_control_margin_list_bottom2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 617
    :cond_d
    iget-object v5, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/preference/R$dimen;->op_control_margin_list_top4:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 618
    iget-object v5, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/preference/R$dimen;->op_control_margin_list_bottom4:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 620
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    :cond_e
    iget-object v3, p0, Landroidx/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_10

    .line 624
    iget-object v3, p0, Landroidx/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    .line 626
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSummaryEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const v1, 0x800033

    .line 627
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 628
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/preference/R$dimen;->op_control_margin_list_top3:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_f
    const/16 v1, 0x10

    .line 630
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 631
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 633
    :goto_5
    iget-object v1, p0, Landroidx/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    :cond_10
    iget-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_11

    .line 641
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_6

    :cond_11
    const/4 v1, 0x1

    .line 643
    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 646
    :goto_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    .line 647
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 648
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 650
    iget-boolean v3, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 651
    iget-boolean v3, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 653
    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 655
    iget-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    if-nez v3, :cond_12

    .line 656
    new-instance v3, Landroidx/preference/Preference$OnPreferenceCopyListener;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$OnPreferenceCopyListener;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    :cond_12
    if-eqz p1, :cond_13

    .line 658
    iget-object p0, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    goto :goto_7

    :cond_13
    move-object p0, v2

    :goto_7
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 659
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_14

    if-nez v1, :cond_14

    .line 663
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1619
    iget-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1620
    iput-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 1623
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1625
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 1500
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1636
    iget-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1637
    iput-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 1640
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1642
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .line 1697
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2227
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2228
    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong state class -- expecting Preference State"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 2177
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2178
    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object p0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1750
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 1312
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1316
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 1318
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1322
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1325
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1326
    invoke-interface {v0, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1331
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1332
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1333
    iget-object p0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0

    .line 1300
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3

    .line 2054
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 2058
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 2063
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2065
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2067
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2068
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2069
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected persistInt(I)Z
    .locals 3

    .line 1892
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    not-int v0, p1

    .line 1896
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 1901
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1903
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1905
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1906
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1907
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    .line 1785
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 1790
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1795
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1797
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1799
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1800
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1801
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1838
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 1843
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1848
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1850
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1852
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1853
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1854
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method requireKey()V
    .locals 1

    .line 1096
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1100
    iput-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    return-void

    .line 1097
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Preference does not have a key assigned."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .line 2189
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .line 2139
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0

    .line 1663
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1666
    iput-object p1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1667
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 909
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 910
    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 913
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 915
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 782
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 783
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 768
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 769
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 770
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 771
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .locals 1

    .line 1178
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eq v0, p1, :cond_0

    .line 1179
    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 1180
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 373
    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 1074
    iget-boolean p1, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1075
    invoke-virtual {p0}, Landroidx/preference/Preference;->requireKey()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1

    .line 478
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Landroidx/preference/Preference;->mCanRecycleLayout:Z

    .line 482
    :cond_0
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    .line 698
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 699
    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 702
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 1143
    iput-boolean p1, p0, Landroidx/preference/Preference;->mPersistent:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    .line 934
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 935
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 936
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 2

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShouldDisableView shouldDisableView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eq v0, p1, :cond_0

    .line 962
    iput-boolean p1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 963
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSingleLineTitle(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1154
    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 1155
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 900
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 866
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 871
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void

    .line 867
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Preference already has a SummaryProvider set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setSummaryOffFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    .line 881
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    return-void
.end method

.method protected setSummaryOnFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    .line 877
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V
    .locals 0

    .line 1227
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    .line 1228
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 747
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 734
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 735
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 736
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setViewId(I)V
    .locals 0

    .line 723
    iput p1, p0, Landroidx/preference/Preference;->mViewId:I

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    .line 991
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 992
    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 993
    iget-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz p1, :cond_0

    .line 994
    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1

    .line 507
    iget v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Landroidx/preference/Preference;->mCanRecycleLayout:Z

    .line 511
    :cond_0
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 0

    .line 1652
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldPersist()Z
    .locals 1

    .line 1132
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 2102
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
