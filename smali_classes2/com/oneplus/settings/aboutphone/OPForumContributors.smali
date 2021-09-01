.class public Lcom/oneplus/settings/aboutphone/OPForumContributors;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPForumContributors.java"


# instance fields
.field private REQUEST_CODE:I

.field private mForumContributorsTextView:Landroid/widget/TextView;

.field private mForumContributorsTextViewWidth:F

.field private mForumImageview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/16 v0, 0x1f5

    .line 43
    iput v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->REQUEST_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/aboutphone/OPForumContributors;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/aboutphone/OPForumContributors;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextViewWidth:F

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->initData()V

    return-void
.end method

.method private static buildReferrer(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    .line 191
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android-app"

    .line 192
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 194
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getSettingsIntelligencePkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 183
    invoke-static {p1, p2}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->buildReferrer(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.extra.REFERRER"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getSettingsIntelligencePkgName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 187
    sget p0, Lcom/android/settings/R$string;->config_settingsintelligence_package_name:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initData()V
    .locals 10

    .line 75
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_forum_o2_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_forum_o2_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->forum_contributors_o2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_forum_h2_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_forum_h2_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->forum_contributors_h2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x0

    .line 94
    aget-object v2, v0, v1

    const-string v3, ""

    move v4, v1

    .line 95
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 96
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_3

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    aget-object v3, v0, v4

    :goto_4
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_5

    .line 102
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->needSplitText(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "\n"

    if-nez v7, :cond_5

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->needSplitText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    aget-object v3, v0, v4

    goto :goto_4

    .line 107
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 111
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    aget-object v3, v0, v4

    goto :goto_4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 117
    :cond_6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 119
    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 120
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v4, 0x2f

    .line 121
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    const/16 v5, 0x22

    if-eqz v4, :cond_7

    .line 123
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#4db2b2b2"

    .line 124
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v6, v1, -0x1

    .line 123
    invoke-virtual {v0, v4, v6, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 128
    :cond_7
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#4d121212"

    .line 129
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v6, v1, -0x1

    .line 128
    invoke-virtual {v0, v4, v6, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 137
    :cond_9
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z
    .locals 3

    const/16 p1, 0x5de

    .line 163
    invoke-direct {p0, p0, p1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 170
    :cond_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    .line 171
    invoke-interface {v0, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->indexSliceDataAsync(Landroid/content/Context;)V

    .line 172
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v2, 0xe2

    new-array v1, v1, [Landroid/util/Pair;

    .line 173
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 174
    iget v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->REQUEST_CODE:I

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    .line 141
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCreateOptionsMenu$0$OPForumContributors(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public needSplitText(Ljava/lang/String;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    iget p0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextViewWidth:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "about_phone_settings"

    const-string v0, "click_award"

    .line 49
    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget p1, Lcom/android/settings/R$layout;->op_forum_award:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 51
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    sget p1, Lcom/android/settings/R$string;->oneplus_o2_contributors:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 54
    :cond_0
    sget p1, Lcom/android/settings/R$string;->oneplus_h2_contributors:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 56
    :goto_0
    sget p1, Lcom/android/settings/R$id;->forum_imageview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    .line 57
    sget p1, Lcom/android/settings/R$id;->forum_contributors:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;-><init>(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 158
    sget v1, Lcom/android/settings/R$menu;->op_search_settings:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 159
    sget v0, Lcom/android/settings/R$id;->action_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    .line 160
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    sget v1, Lcom/android/settings/R$drawable;->ic_menu_search_material:I

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 162
    new-instance v1, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPForumContributors$Fgq3BTVklCn5TzLTlkK9M4s9qko;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPForumContributors$Fgq3BTVklCn5TzLTlkK9M4s9qko;-><init>(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
