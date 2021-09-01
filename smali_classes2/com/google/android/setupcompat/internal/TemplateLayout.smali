.class public Lcom/google/android/setupcompat/internal/TemplateLayout;
.super Landroid/widget/FrameLayout;
.source "TemplateLayout.java"


# instance fields
.field private container:Landroid/view/ViewGroup;

.field private final mixins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/setupcompat/template/Mixin;",
            ">;",
            "Lcom/google/android/setupcompat/template/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private xFraction:F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->mixins:Ljava/util/Map;

    .line 57
    sget p1, Lcom/google/android/setupcompat/R$attr;->sucLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->mixins:Ljava/util/Map;

    .line 62
    sget p1, Lcom/google/android/setupcompat/R$attr;->sucLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->mixins:Ljava/util/Map;

    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupcompat/internal/TemplateLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/setupcompat/internal/TemplateLayout;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->xFraction:F

    return p0
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private inflateTemplate(II)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->addViewInternal(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->container:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onTemplateInflated()V

    return-void

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Container cannot be null in TemplateLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init(IILandroid/util/AttributeSet;I)V
    .locals 3

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucTemplateLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p1, :cond_0

    .line 77
    sget p1, Lcom/google/android/setupcompat/R$styleable;->SucTemplateLayout_android_layout:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    :cond_0
    if-nez p2, :cond_1

    .line 80
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucTemplateLayout_sucContainer:I

    invoke-virtual {v0, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 82
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onBeforeTemplateInflated(Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(II)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public findManagedViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/android/setupcompat/template/Mixin;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->mixins:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/Mixin;

    return-object p0
.end method

.method public getXFraction()F
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 262
    iget p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->xFraction:F

    return p0
.end method

.method protected final inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 174
    new-instance v0, Lcom/google/android/setupcompat/internal/FallbackThemeWrapper;

    .line 175
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/google/android/setupcompat/internal/FallbackThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 177
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 171
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "android:layout not specified for TemplateLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onBeforeTemplateInflated(Landroid/util/AttributeSet;I)V
    .locals 0

    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onTemplateInflated()V
    .locals 0

    return-void
.end method

.method protected registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/android/setupcompat/template/Mixin;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;TM;)V"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->mixins:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setXFraction(F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 229
    iput p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->xFraction:F

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 232
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez p1, :cond_1

    .line 239
    new-instance p1, Lcom/google/android/setupcompat/internal/TemplateLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/internal/TemplateLayout$1;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    :goto_0
    return-void
.end method
