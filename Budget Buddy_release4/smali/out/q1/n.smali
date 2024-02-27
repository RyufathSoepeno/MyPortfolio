.class public final Lq1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/b0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/n;->a:Lkotlinx/coroutines/internal/b0;

    return-void
.end method
