.class public final Li1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln1/c;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln1/c<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/internal/d;

    invoke-interface {p0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Ln1/c;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln1/c<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/internal/d;

    invoke-interface {p0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>"

    if-nez v0, :cond_17

    invoke-static {p0, v1}, Lkotlin/jvm/internal/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_96

    goto/16 :goto_91

    :sswitch_24
    const-string v2, "short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_91

    :cond_2e
    const-class p0, Ljava/lang/Short;

    goto/16 :goto_91

    :sswitch_32
    const-string v2, "float"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_91

    :cond_3b
    const-class p0, Ljava/lang/Float;

    goto :goto_91

    :sswitch_3e
    const-string v2, "boolean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_91

    :cond_47
    const-class p0, Ljava/lang/Boolean;

    goto :goto_91

    :sswitch_4a
    const-string v2, "void"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_91

    :cond_53
    const-class p0, Ljava/lang/Void;

    goto :goto_91

    :sswitch_56
    const-string v2, "long"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_91

    :cond_5f
    const-class p0, Ljava/lang/Long;

    goto :goto_91

    :sswitch_62
    const-string v2, "char"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_91

    :cond_6b
    const-class p0, Ljava/lang/Character;

    goto :goto_91

    :sswitch_6e
    const-string v2, "byte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_91

    :cond_77
    const-class p0, Ljava/lang/Byte;

    goto :goto_91

    :sswitch_7a
    const-string v2, "int"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_91

    :cond_83
    const-class p0, Ljava/lang/Integer;

    goto :goto_91

    :sswitch_86
    const-string v2, "double"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_91

    :cond_8f
    const-class p0, Ljava/lang/Double;

    :goto_91
    invoke-static {p0, v1}, Lkotlin/jvm/internal/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_96
    .sparse-switch
        -0x4f08842f -> :sswitch_86
        0x197ef -> :sswitch_7a
        0x2e6108 -> :sswitch_6e
        0x2e9356 -> :sswitch_62
        0x32c67c -> :sswitch_56
        0x375194 -> :sswitch_4a
        0x3db6c28 -> :sswitch_3e
        0x5d0225c -> :sswitch_32
        0x685847c -> :sswitch_24
    .end sparse-switch
.end method
