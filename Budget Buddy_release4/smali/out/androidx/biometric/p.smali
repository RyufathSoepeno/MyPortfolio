.class Landroidx/biometric/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x7

    if-eq p1, v0, :cond_34

    packed-switch p1, :pswitch_data_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Landroidx/biometric/a0;->b:I

    :goto_26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2b
    sget p1, Landroidx/biometric/a0;->e:I

    goto :goto_26

    :pswitch_2e
    sget p1, Landroidx/biometric/a0;->g:I

    goto :goto_26

    :pswitch_31
    sget p1, Landroidx/biometric/a0;->h:I

    goto :goto_26

    :cond_34
    :pswitch_34
    sget p1, Landroidx/biometric/a0;->f:I

    goto :goto_26

    :cond_37
    sget p1, Landroidx/biometric/a0;->d:I

    goto :goto_26

    :pswitch_data_3a
    .packed-switch 0x9
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method static b(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static c(I)Z
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_a

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method
