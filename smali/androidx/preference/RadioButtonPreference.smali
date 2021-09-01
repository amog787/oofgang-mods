.class public Landroidx/preference/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Landroidx/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    sget v0, Landroidx/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 30
    sget v0, Landroidx/preference/R$style;->Preference_Material_RadioButtonPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-static {p1, p3}, Landroidx/preference/RadioButtonPreference;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroidx/preference/RadioButtonPreference;->setCanRecycleLayout(Z)V

    return-void
.end method

.method static resolveDefStyleAttr(Landroid/content/Context;I)I
    .locals 2

    .line 55
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 58
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    ushr-int/lit8 p0, p0, 0x18

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private setCanRecycleLayout(Z)V
    .locals 2

    .line 44
    :try_start_0
    const-class v0, Landroidx/preference/Preference;

    const-string v1, "mCanRecycleLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method
