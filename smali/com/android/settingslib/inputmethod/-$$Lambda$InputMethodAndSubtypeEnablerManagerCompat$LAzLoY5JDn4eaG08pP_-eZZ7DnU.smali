.class public final synthetic Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManagerCompat$LAzLoY5JDn4eaG08pP_-eZZ7DnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManagerCompat$LAzLoY5JDn4eaG08pP_-eZZ7DnU;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManagerCompat$LAzLoY5JDn4eaG08pP_-eZZ7DnU;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    check-cast p1, Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/Preference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->lambda$addInputMethodSubtypePreferences$0$InputMethodAndSubtypeEnablerManagerCompat(Landroidx/preference/Preference;Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method
