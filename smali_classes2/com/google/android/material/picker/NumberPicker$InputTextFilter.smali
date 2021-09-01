.class Lcom/google/android/material/picker/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 2121
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    .line 2140
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$700(Lcom/google/android/material/picker/NumberPicker;)Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$700(Lcom/google/android/material/picker/NumberPicker;)Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_5

    .line 2145
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2147
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2150
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2153
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    .line 2156
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p2, p1}, Lcom/google/android/material/picker/NumberPicker;->access$900(Lcom/google/android/material/picker/NumberPicker;Ljava/lang/String;)I

    move-result p2

    .line 2165
    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p3}, Lcom/google/android/material/picker/NumberPicker;->access$1000(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p3

    if-gt p2, p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$1000(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p1, p0, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v2

    .line 2171
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-object v2

    .line 2175
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2176
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2177
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2178
    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p3}, Lcom/google/android/material/picker/NumberPicker;->access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    :goto_1
    if-ge v1, p4, :cond_8

    aget-object p6, p3, v1

    .line 2179
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2180
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2181
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/google/android/material/picker/NumberPicker;->access$1100(Lcom/google/android/material/picker/NumberPicker;II)V

    .line 2182
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p6, p5, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-object v2
.end method

.method protected getAcceptedChars()[C
    .locals 0

    .line 2132
    invoke-static {}, Lcom/google/android/material/picker/NumberPicker;->access$600()[C

    move-result-object p0

    return-object p0
.end method

.method public getInputType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
