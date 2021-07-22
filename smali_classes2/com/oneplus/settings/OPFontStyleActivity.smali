.class public Lcom/oneplus/settings/OPFontStyleActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFontStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/OnPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;,
        Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;,
        Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;
    }
.end annotation


# static fields
.field private static mLastFontValue:I = -0x1


# instance fields
.field private mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

.field private mFontValue:I

.field private mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewText1:Landroid/widget/TextView;

.field private mPreviewText2:Landroid/widget/TextView;

.field private mPreviewText3:Landroid/widget/TextView;

.field private mPreviewText4:Landroid/widget/TextView;

.field protected mSelectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPFontStyleActivity;Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPFontStyleActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/OPFontStyleActivity;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPFontStyleActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPFontStyleActivity;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPFontStyleActivity;->setFontStyle(I)V

    return-void
.end method

.method private modifyPreviewText()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText1:Landroid/widget/TextView;

    const-string v1, "sans-serif-medium"

    if-eqz v0, :cond_0

    .line 308
    iget v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 310
    iget v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText3:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 312
    iget v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText4:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 314
    iget p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method

.method private setFontStyle(I)V
    .locals 2

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "oneplus_dynamicfont"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {p0, v0}, Lcom/oneplus/compat/util/OpThemeNative;->enableTheme(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method protected needShowWarningDialog()Z
    .locals 1

    .line 107
    sget v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    iget p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 320
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->performBackEvent()V

    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->save_button:I

    if-ne p1, v0, :cond_4

    .line 288
    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const/4 v0, 0x1

    const-string v1, "status"

    const-string v2, "font"

    if-ne p1, v0, :cond_0

    const-string p1, "noto"

    .line 289
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "slate"

    .line 291
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const-string p1, "yuan"

    .line 293
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    const-string p1, "kai"

    .line 295
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 298
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPFontStyleActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPFontStyleActivity$2;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 47
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_font_mode"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    sput p1, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate mLastFontValue = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPFontStyleActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget p1, Lcom/android/settings/R$string;->oneplus_font_style:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 51
    sget p1, Lcom/android/settings/R$layout;->op_font_style_newdisplay:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/BaseActivity;->setOnPressListener(Lcom/oneplus/settings/OnPressListener;)V

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Typeface;->opGetFontIDsForUser(I)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string v6, "sans-serif-medium"

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->opGetIsolatedTypeface(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const-string v7, "sans-serif-book"

    invoke-static {v5, v6, v7}, Landroid/graphics/Typeface;->opGetIsolatedTypeface(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 63
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oneplus_oem_font_name_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.oneplus"

    invoke-static {v6, v8, v7}, Lcom/oneplus/settings/utils/OPUtils;->getOtherPackageString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fontId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v7, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8, v4, v5, v6}, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;-><init>(ILandroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/lang/String;)V

    .line 67
    sget v4, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 68
    iput-boolean v1, v7, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    .line 69
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :cond_1
    sget p1, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    iput p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    .line 78
    sget p1, Lcom/android/settings/R$id;->preview_text1:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText1:Landroid/widget/TextView;

    .line 79
    sget p1, Lcom/android/settings/R$id;->preview_text2:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText2:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/android/settings/R$id;->preview_text3:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText3:Landroid/widget/TextView;

    .line 81
    sget p1, Lcom/android/settings/R$id;->preview_text4:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText4:Landroid/widget/TextView;

    .line 83
    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

    .line 85
    sget p1, Lcom/android/settings/R$id;->font_style_recyclerview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 88
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 91
    new-instance v3, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;

    iget-object v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, p0, v4, v2}, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 93
    new-instance v2, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;)V

    .line 94
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    const-string p1, "scrollToPosition"

    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 101
    :cond_2
    sget p1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 102
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 247
    :cond_0
    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const/4 v0, 0x1

    const-string v1, "status"

    const-string v2, "font"

    if-ne p1, v0, :cond_1

    const-string p1, "noto"

    .line 248
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const-string p1, "slate"

    .line 250
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    if-ne p1, v3, :cond_3

    const-string p1, "yuan"

    .line 252
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x65

    if-ne p1, v3, :cond_4

    const-string p1, "kai"

    .line 254
    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 257
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/settings/OPFontStyleActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPFontStyleActivity$1;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 226
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return-void
.end method
