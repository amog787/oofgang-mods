.class public final Lcom/android/settingslib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final RestrictedPreference:[I

.field public static final RestrictedPreference_useAdminDisabledSummary:I = 0x0

.field public static final RestrictedPreference_userRestriction:I = 0x1

.field public static final RestrictedSwitchPreference:[I

.field public static final RestrictedSwitchPreference_restrictedSwitchSummary:I = 0x0

.field public static final RestrictedSwitchPreference_useAdditionalSummary:I = 0x1

.field public static final UsageView:[I

.field public static final UsageView_android_colorAccent:I = 0x1

.field public static final UsageView_android_gravity:I = 0x0

.field public static final UsageView_bottomLabels:I = 0x2

.field public static final UsageView_sideLabels:I = 0x3

.field public static final UsageView_textColor:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 65402
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settingslib/R$styleable;->UsageView:[I

    return-void

    :array_0
    .array-data 4
        0x7f0405ba
        0x7f0405bf
    .end array-data

    :array_1
    .array-data 4
        0x7f040444
        0x7f0405b9
    .end array-data

    :array_2
    .array-data 4
        0x10100af
        0x1010435
        0x7f040084
        0x7f04048d
        0x7f040563
    .end array-data
.end method
