.class Lf0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lf0/c;


# direct methods
.method private constructor <init>(Lf0/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/a$c;->a:Lf0/c;

    return-void
.end method

.method synthetic constructor <init>(Lf0/c;Lf0/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lf0/a$c;-><init>(Lf0/c;)V

    return-void
.end method


# virtual methods
.method public a(Ls0/c$d;)Ls0/c$c;
    .registers 3

    iget-object v0, p0, Lf0/a$c;->a:Lf0/c;

    invoke-virtual {v0, p1}, Lf0/c;->a(Ls0/c$d;)Ls0/c$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ls0/c$c;
    .registers 2

    invoke-static {p0}, Ls0/b;->a(Ls0/c;)Ls0/c$c;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V
    .registers 5

    iget-object v0, p0, Lf0/a$c;->a:Lf0/c;

    invoke-virtual {v0, p1, p2, p3}, Lf0/c;->c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ls0/c$a;)V
    .registers 4

    iget-object v0, p0, Lf0/a$c;->a:Lf0/c;

    invoke-virtual {v0, p1, p2}, Lf0/c;->e(Ljava/lang/String;Ls0/c$a;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/nio/ByteBuffer;Ls0/c$b;)V
    .registers 5

    iget-object v0, p0, Lf0/a$c;->a:Lf0/c;

    invoke-virtual {v0, p1, p2, p3}, Lf0/c;->g(Ljava/lang/String;Ljava/nio/ByteBuffer;Ls0/c$b;)V

    return-void
.end method
