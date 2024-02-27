.class final synthetic Lkotlinx/coroutines/internal/o$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/o;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const-class v2, Lq1/l0;

    const-string v3, "classSimpleName"

    const-string v4, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/o;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/c;->receiver:Ljava/lang/Object;

    invoke-static {v0}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
