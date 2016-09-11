<script>
  export default {
    name: 'app',

    template: require('./app.html'),

    methods: {
      handleCopyCmd($event) {
        $event.target.select();
      }
    }
  };
</script>

<style lang="css">
  /* variables */
  $color-white: #fff;
  $color-blue: #008de1;
  $color-blue-dark: #186fa2;

  /* reset */
  @custom-media --small-viewport (max-width: 30em);
  @reset-global pc;

  @media (--small-viewport) {
    @reset-global mobile;
  }

  /* grid */
  .grid {
    @neat-outer-container;
    max-width: 960px;

    .grid-col {
      @neat-span-columns 4;

      &:nth-child(3n) {
        @neat-omega;
      }
    }
  }

  /* page */
  a {
    color: inherit;
    transition: .3s all;

    &.link {
      padding-bottom: 1px;
      border-bottom: 1px dashed #ccc;
    }

    &:hover {
      opacity: .6;
    }
  }

  .header {
    color: $color-white;
    background-color: $color-blue;
    text-align: center;
  }

  .install {
    background-color: $color-blue-dark;
    text-align: center;
    margin: 20px;
    padding: 10px;
    width: 200px;
    outline: 0;
    border: 0;
  }

  .nav {
    .nav-list {
      font-weight: lighter;
      padding-top: 30px;
    }

    .nav-item {
      display: inline-block;
    }

    .nav-link {
      font-weight: inherit;
      font-family: sans-serif;
      padding: 5px 10px;
    }
  }

  .intro {
    margin: 40px 0;
    text-align: center;

    .headline {
      font-size: 30px;
      color: #333;
    }

    .text {
      color: #6d6d6d;
      line-height: 1.6em;
      font-size: 16px;
      max-width: 700px;
      padding: 0 10px;
      margin: 20px auto 40px;
    }

    .video {
      border-radius: 4px;
      display: block;
      margin: auto;
      rect: 600px auto $color-white;
      box-shadow: 1px 1px 10px #999;

      @media (--small-viewport) {
        width: 100%;
        border-radius: 0;
      }
    }
  }

  .main-wrap {
    padding: 30px 0;

    .headline {
      font-size: 40px;
      font-family: cursive;
      margin-bottom: 20px;
    }

    .buttongroup {
      .button {
        margin-right: 10px;

        &:last-child {
          margin-right: 0;
        }
      }
    }

    .logo {
      width: 150px;
      margin: auto;
      display: block;
    }

    .desc {
      font-size: 24px;
      min-width: 300px;
    }
  }

  .warp {
    background-color: #f9f9f9;
    padding: 20px;
  }

  .info {
    margin: 30px auto 40px;

    .feature {
      color: #333;
      font-size: 14px;
      padding: 30px 20px;

      @media (--small-viewport) {
        @neat-span-columns 12;
        @neat-omega;
        padding: 20px;
      }
    }

    .feature-title {
      font-size: 20px;
      font-weight: normal;
      margin-bottom: 6px;
    }

    .feature-text {
      line-height: 1.6em;
      color: #6d6d6d;
    }
  }

  .quickstart {
    margin: 40px 0 50px;
    text-align: center;

    .headline {
      font-size: 30px;
      color: #333;
      margin-bottom: 20px;
    }

    .more {
      font-size: 16px;
      margin-top: 20px;
      color: #6d6d6d;
    }

    .shell {
      display: block;
      max-width: 500px;
      margin: 0 auto;
      text-align: left;
      background-color: #0b354e;
      color: $color-white;
      padding: 20px;
      border-radius: 4px;
      box-shadow: 1px 1px 10px #999;

      @media (--small-viewport) {
        border-radius: 0;
      }

      .comment {
        color: #719fad;
      }

      .command {
        color: #a8dbf9;
      }
    }
  }

  .footer {
    color: #ccc;
    text-align: center;
    padding: 20px;
  }
</style>