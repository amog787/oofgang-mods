.class public final Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;
.super Ljava/lang/Object;
.source "AccessibilityGestureNavigationTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;,
        Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;,
        Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPagerAdapter;
    }
.end annotation


# static fields
.field private static final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-object v0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$8C7pOA2IdxSAhUypXc1abvjSbh8;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$8C7pOA2IdxSAhUypXc1abvjSbh8;

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static createAccessibilityTutorialDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 117
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createShortcutNavigationContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_button:I

    sget-object p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 178
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_button:I

    sget-object p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 180
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 183
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 184
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method private static createHardwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;
    .locals 4

    .line 347
    sget v0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_title_volume:I

    .line 348
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 349
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware:I

    .line 350
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 351
    sget v2, Lcom/android/settings/R$drawable;->ic_accessibility_page_indicator:I

    .line 352
    invoke-static {p0, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v2

    .line 353
    sget v3, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_volume:I

    .line 354
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v3, 0x0

    .line 355
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 357
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;-><init>(Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private static createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 1

    .line 267
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p0, 0x1

    .line 269
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-object v0
.end method

.method private static createShortcutNavigationContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 9

    .line 275
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 276
    sget v1, Lcom/android/settings/R$layout;->accessibility_shortcut_tutorial_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 279
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createShortcutTutorialPages(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    .line 280
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v3, "Unexpected tutorial pages size"

    invoke-static {p1, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 283
    sget p1, Lcom/android/settings/R$id;->indicator_container:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 284
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    .line 286
    invoke-virtual {v5}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getIndicatorIcon()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 288
    :cond_1
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getIndicatorIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 290
    sget p1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/TextSwitcher;

    .line 291
    new-instance p1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$98JA52mi2vqsU7AN9Dz2jOiG1os;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$98JA52mi2vqsU7AN9Dz2jOiG1os;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 292
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 294
    sget p1, Lcom/android/settings/R$id;->instruction:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/TextSwitcher;

    .line 295
    new-instance p1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$IjOVOr1897Ys4nd0CFO-3ZXWAwk;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$IjOVOr1897Ys4nd0CFO-3ZXWAwk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 296
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getInstruction()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 298
    sget p1, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 299
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPagerAdapter;

    invoke-direct {v3, v8, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPagerAdapter;-><init>(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$1;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 300
    sget v2, Lcom/android/settings/R$string;->accessibility_tutorial_pager:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 300
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 305
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;-><init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-object v0
.end method

.method static createShortcutTutorialPages(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 379
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createSoftwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 383
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createHardwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x4

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    .line 387
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTripleTapTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static createSoftwareImage(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    .line 404
    sget v0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software:I

    .line 405
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    sget v0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_gesture_talkback:I

    goto :goto_0

    .line 408
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_gesture:I

    .line 411
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private static createSoftwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;
    .locals 4

    .line 336
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getSoftwareTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 337
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createSoftwareImage(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    .line 338
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getSoftwareInstruction(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 339
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_page_indicator:I

    .line 340
    invoke-static {p0, v3}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v3, 0x0

    .line 341
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 343
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;-><init>(Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private static createTripleTapTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;
    .locals 4

    .line 361
    sget v0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_title_triple:I

    .line 362
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 363
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_triple_tap:I

    .line 364
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 365
    sget v2, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_triple:I

    .line 366
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 367
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_page_indicator:I

    .line 368
    invoke-static {p0, v3}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v3, 0x0

    .line 369
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 371
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;-><init>(Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private static createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 157
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->tutorial_dialog_launch_by_gesture_navigation_settings:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    sget p1, Lcom/android/settings/R$id;->gesture_tutorial_video:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    .line 161
    sget v0, Lcom/android/settings/R$id;->gesture_tutorial_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    sget v2, Lcom/android/settings/R$raw;->illustration_accessibility_gesture_three_finger:I

    goto :goto_0

    .line 165
    :cond_1
    sget v2, Lcom/android/settings/R$raw;->illustration_accessibility_gesture_two_finger:I

    .line 163
    :goto_0
    invoke-static {p0, v2, p1}, Lcom/android/settings/accessibility/VideoPlayer;->create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;

    .line 167
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 168
    sget p0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_gesture_settings_talkback:I

    goto :goto_1

    .line 169
    :cond_2
    sget p0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_gesture_settings:I

    .line 170
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 142
    :cond_3
    sget p1, Lcom/android/settings/R$layout;->tutorial_dialog_launch_service_by_gesture_navigation:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 144
    sget p1, Lcom/android/settings/R$id;->gesture_tutorial_video:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    .line 146
    sget v0, Lcom/android/settings/R$id;->gesture_tutorial_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    sget v2, Lcom/android/settings/R$raw;->illustration_accessibility_gesture_three_finger:I

    goto :goto_2

    .line 150
    :cond_4
    sget v2, Lcom/android/settings/R$raw;->illustration_accessibility_gesture_two_finger:I

    .line 148
    :goto_2
    invoke-static {p0, v2, p1}, Lcom/android/settings/accessibility/VideoPlayer;->create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;

    .line 152
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 153
    sget p0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_gesture_talkback:I

    goto :goto_3

    .line 154
    :cond_5
    sget p0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_gesture:I

    .line 152
    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 138
    :cond_6
    sget p0, Lcom/android/settings/R$layout;->tutorial_dialog_launch_service_by_accessibility_button:I

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method private static getSoftwareInstruction(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 416
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 417
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 418
    sget v2, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_button:I

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 421
    sget v0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_gesture_talkback:I

    goto :goto_0

    .line 422
    :cond_0
    sget v0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_gesture:I

    :goto_0
    move v2, v0

    .line 425
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 426
    sget v1, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_message_button:I

    if-ne v2, v1, :cond_2

    .line 427
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getSoftwareInstructionWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static getSoftwareInstructionWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 434
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    const-string v1, "%s"

    .line 436
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, p1, 0x2

    .line 438
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 439
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_new:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 441
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v3, ""

    .line 442
    invoke-virtual {v2, v3}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    .line 443
    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    .line 445
    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static getSoftwareTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 395
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    sget v0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_title_gesture:I

    goto :goto_0

    .line 398
    :cond_0
    sget v0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_title_button:I

    .line 400
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createShortcutNavigationContentView$1(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 291
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->makeTitleView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createShortcutNavigationContentView$2(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 295
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->makeInstructionView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 85
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static makeInstructionView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 327
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x1010036

    .line 329
    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string p0, "sans-serif"

    const/4 v1, 0x0

    .line 331
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method private static makeTitleView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const v0, 0x1040229

    .line 314
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 318
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x1010036

    .line 319
    invoke-static {p0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 p0, 0x11

    .line 320
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x0

    .line 321
    invoke-static {v0, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v1
.end method

.method public static showGestureNavigationSettingsTutorialDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 89
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 90
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->accessibility_tutorial_dialog_button:I

    sget-object v1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static showGestureNavigationTutorialDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
