.class public Lcom/oneplus/settings/ui/OPMemberPreference;
.super Landroidx/preference/Preference;
.source "OPMemberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIvAvatarBg:Lcom/oneplus/settings/ui/OPMemberImageView;

.field private mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

.field private mLlClickBg:Landroid/widget/LinearLayout;

.field private mLlContent:Landroid/widget/LinearLayout;

.field private mTvContent:Landroid/widget/TextView;

.field private mTvNew:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private newVersionValue:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->newVersionValue:D

    .line 52
    new-instance v0, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;-><init>(Lcom/oneplus/settings/ui/OPMemberPreference;Lcom/oneplus/settings/ui/OPMemberPreference$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mHandler:Landroid/os/Handler;

    .line 71
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->newVersionValue:D

    .line 52
    new-instance p2, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;-><init>(Lcom/oneplus/settings/ui/OPMemberPreference;Lcom/oneplus/settings/ui/OPMemberPreference$1;)V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x0

    .line 50
    iput-wide p2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->newVersionValue:D

    .line 52
    new-instance p2, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;-><init>(Lcom/oneplus/settings/ui/OPMemberPreference;Lcom/oneplus/settings/ui/OPMemberPreference$1;)V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p2, 0x0

    .line 50
    iput-wide p2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->newVersionValue:D

    .line 52
    new-instance p2, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;-><init>(Lcom/oneplus/settings/ui/OPMemberPreference;Lcom/oneplus/settings/ui/OPMemberPreference$1;)V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPMemberPreference;)Landroid/widget/LinearLayout;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mLlClickBg:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPMemberPreference;)Landroid/widget/LinearLayout;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mLlContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPMemberPreference;Ljava/util/Map;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference;->setViewData(Ljava/util/Map;)V

    return-void
.end method

.method private getMemberInfo()V
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPMemberPreference;->isIndia()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settings/R$string;->op_member_title:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$string;->op_china_member_title:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPMemberPreference;->isIndia()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/android/settings/R$string;->op_member_description:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/settings/R$string;->op_china_member_description:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "member_title"

    .line 117
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "member_avatar"

    const-string v4, ""

    .line 118
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "token"

    .line 119
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    iget-object v6, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvContent:Landroid/widget/TextView;

    const-string v7, "member_content"

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0, v3, v1, v5}, Lcom/oneplus/settings/ui/OPMemberPreference;->setAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "member_icon"

    .line 123
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/OPMemberPreference;->setIconState(Ljava/lang/String;)V

    const-string v1, "member_new_version"

    .line 124
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPMemberPreference;->setNewVersionVis(Ljava/lang/String;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    .line 76
    sget p1, Lcom/android/settings/R$layout;->op_preference_member:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private isIndia()Z
    .locals 1

    .line 217
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    const-string v0, "com.oneplus.membership"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarBg:Lcom/oneplus/settings/ui/OPMemberImageView;

    new-instance v0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p2, p3}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/oneplus/settings/utils/CircleCrop;

    invoke-direct {p2}, Lcom/oneplus/settings/utils/CircleCrop;-><init>()V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p2, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarBg:Lcom/oneplus/settings/ui/OPMemberImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarBg:Lcom/oneplus/settings/ui/OPMemberImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setClickBgHeight()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mLlContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mLlClickBg:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/OPMemberPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPMemberPreference$1;-><init>(Lcom/oneplus/settings/ui/OPMemberPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private setIconState(Ljava/lang/String;)V
    .locals 2

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/oneplus/settings/utils/CircleCrop;

    invoke-direct {v0}, Lcom/oneplus/settings/utils/CircleCrop;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNewVersionVis(Ljava/lang/String;)V
    .locals 4

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "member_local_version"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->newVersionValue:D

    .line 167
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    .line 168
    iget-wide v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->newVersionValue:D

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    const/16 v0, 0x8

    if-lez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvNew:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 170
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvNew:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvNew:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setViewData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    .line 129
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvTitle:Landroid/widget/TextView;

    const-string v2, "member_title"

    if-eqz v1, :cond_2

    .line 135
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvContent:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const-string v3, "member_content"

    .line 138
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v1, "member_avatar"

    .line 140
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarBg:Lcom/oneplus/settings/ui/OPMemberImageView;

    if-eqz v3, :cond_4

    .line 142
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/oneplus/settings/ui/OPMemberPreference;->setAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "member_icon"

    .line 144
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPMemberPreference;->setIconState(Ljava/lang/String;)V

    const-string v0, "member_new_version"

    .line 145
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference;->setNewVersionVis(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPMemberPreference;->setClickBgHeight()V

    return-void
.end method


# virtual methods
.method public clearNew()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvNew:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    iget-wide v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->newVersionValue:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    const-string v1, "member_local_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 82
    sget v0, Lcom/android/settings/R$id;->op_adjust_width_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPAdjustWidthLayout;

    .line 83
    sget v0, Lcom/android/settings/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mLlContent:Landroid/widget/LinearLayout;

    .line 84
    sget v0, Lcom/android/settings/R$id;->ll_click_bg:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mLlClickBg:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcom/android/settings/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvTitle:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/android/settings/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvContent:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/android/settings/R$id;->iv_avatar_bg:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPMemberImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarBg:Lcom/oneplus/settings/ui/OPMemberImageView;

    .line 88
    sget v0, Lcom/android/settings/R$id;->iv_avatar_tag:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPMemberImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mIvAvatarTag:Lcom/oneplus/settings/ui/OPMemberImageView;

    .line 89
    sget v0, Lcom/android/settings/R$id;->tv_new:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mTvNew:Landroid/widget/TextView;

    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPMemberPreference;->getMemberInfo()V

    .line 91
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPMemberPreference;->setClickBgHeight()V

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "member_title"

    .line 97
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "member_content"

    .line 98
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "member_avatar"

    .line 99
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "member_icon"

    .line 100
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "member_new_version"

    .line 101
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "token"

    const-string v3, ""

    .line 102
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
